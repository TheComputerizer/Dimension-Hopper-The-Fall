abstract class Uniform<U> {

    final String name;
    int uniformID;

    Uniform(String name) {
        this.name = name;
    }

    int getID() {
        return this.uniformID;
    }

    String getName() {
        return this.name;
    }

    void setID(int id) {
        this.uniformID = id;
    }

    abstract void upload(float partialTicks, int programID);
}