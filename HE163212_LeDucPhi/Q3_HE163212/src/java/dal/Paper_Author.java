/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author leducphi
 */
public class Paper_Author {
    private int pid;
    private int auid;
    private int corresponding_author;

    public Paper_Author() {
    }

    public Paper_Author(int pid, int auid, int corresponding_author) {
        this.pid = pid;
        this.auid = auid;
        this.corresponding_author = corresponding_author;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getAuid() {
        return auid;
    }

    public void setAuid(int auid) {
        this.auid = auid;
    }

    public int getCorresponding_author() {
        return corresponding_author;
    }

    public void setCorresponding_author(int corresponding_author) {
        this.corresponding_author = corresponding_author;
    }

    @Override
    public String toString() {
        return "Paper_Author{" + "pid=" + pid + ", auid=" + auid + ", corresponding_author=" + corresponding_author + '}';
    }
    
    
}
