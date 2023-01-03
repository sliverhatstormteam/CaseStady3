package com.example.casestady3.HQC.model;

public class Kind {
    private int kindID;
    private String kindName;

    public Kind() {
    }

    public Kind(int kindID, String kindName) {
        this.kindID = kindID;
        this.kindName = kindName;
    }

    public int getKindID() {
        return kindID;
    }

    public void setKindID(int kindID) {
        this.kindID = kindID;
    }

    public String getKindName() {
        return kindName;
    }

    public void setKindName(String kindName) {
        this.kindName = kindName;
    }

    @Override
    public String toString() {
        return "Kind{" +
                "kindID=" + kindID +
                ", kindName='" + kindName + '\'' +
                '}';
    }
}
