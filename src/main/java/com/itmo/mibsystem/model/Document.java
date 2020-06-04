package com.itmo.mibsystem.model;

import com.google.common.base.Objects;
import java.util.StringJoiner;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Long idCategory1;
    private Long idCategory2;
    private Long idCategory3;
    private String field1;
    private String field2;
    private String field3;

    protected Document() {
    }

    public Document(Long idCategory1, Long idCategory2, Long idCategory3, String field1,
        String field2, String field3) {
        this.idCategory1 = idCategory1;
        this.idCategory2 = idCategory2;
        this.idCategory3 = idCategory3;
        this.field1 = field1;
        this.field2 = field2;
        this.field3 = field3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Document document = (Document) o;
        return Objects.equal(id, document.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Document.class.getSimpleName() + "[", "]")
            .add("id=" + id)
            .add("idCategory1=" + idCategory1)
            .add("idCategory2=" + idCategory2)
            .add("idCategory3=" + idCategory3)
            .add("field1='" + field1 + "'")
            .add("field2='" + field2 + "'")
            .add("field3='" + field3 + "'")
            .toString();
    }

    public Long getId() {
        return id;
    }

    public Long getIdCategory1() {
        return idCategory1;
    }

    public Long getIdCategory2() {
        return idCategory2;
    }

    public Long getIdCategory3() {
        return idCategory3;
    }

    public String getField1() {
        return field1;
    }

    public String getField2() {
        return field2;
    }

    public String getField3() {
        return field3;
    }
}
