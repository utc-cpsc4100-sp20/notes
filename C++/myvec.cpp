
#include <iostream>
#include <cstdlib>

template <typename T>
class myvec
{
public:
    myvec(int size)
    {
        data=(T*)calloc(size,sizeof(T));
        count=size;
    }

    ~myvec()
    {
        std::cerr << "in the destructor" << std::endl;
        free(data);
    }


    void set(int i, T value)
    {
        data[i]=value;
    }

    T get(int i)
    {
        return data[i];
    }

    T& operator[](int i)
    {
        return data[i];
    }

    int size()
    {
        return count;
    }


private:
    T* data;
    int count;
};

void fill_vec(myvec<int>& vec)
{
    for (int i=0; i<vec.size(); i++)
    {
        // vec.set(i, i*2);
        vec[i]=i*2;
    }
}



int main(int argc, char *argv[])
{
    myvec<int> vec(10);

    // for (int i=0; i<vec.size(); i++)
    // {
    //     // vec.set(i, i*2);
    //     vec[i]=i*2;
    // }
    fill_vec(vec);

    for (int i=0; i<vec.size(); i++)
    {
        //std::cout << i << " - " << vec.get(i) << std::endl;
        std::cout << i << " - " << vec[i] << std::endl;
    }

    

    return 0;
}

   
