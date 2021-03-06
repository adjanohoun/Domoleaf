## @package domomaster
# Master daemon for D3 boxes.
#
# Developed by GreenLeaf.

from threading import Thread;
from MysqlHandler import *;
import MasterDaemon;

## Threaded class retrieving a domoleaf packet.
#
# Retrieves packets from the slaves, and sends it to treatment function.
class CommandReceiver(Thread):

    ## The constructor.
    #
    # @param connection The connection object used to receive data.
    # @param daemon The MasterDaemon object.
    def __init__(self, connection, daemon):
        Thread.__init__(self);

        ## The connection object
        self.connection = connection;

        ## Instance of the master daemon
        self.daemon = daemon;

        ## The username for the connection to the database
        self.db_username = daemon.db_username;

        ## The password for the connection to the database
        self.db_passwd = daemon.db_passwd;

        ## The name of the database
        self.db_dbname = daemon.db_dbname;

    ## Thread run function overload.
    #
    # It listens to the slaves and sends the packet to the treatment function.
    def run(self):
        ## The MysqlHandler object for the communication with the database
        self.db = MysqlHandler(self.db_username, self.db_passwd, self.db_dbname);
        data = self.connection.recv(MasterDaemon.MAX_DATA_LENGTH).decode();
        self.daemon.parse_data(data, self.connection, 0, self.db);
        self.db.close();
