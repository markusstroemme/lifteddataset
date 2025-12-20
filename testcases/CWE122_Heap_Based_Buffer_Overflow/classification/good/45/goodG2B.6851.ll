@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_memmove_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3f463:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_memmove_45_goodG2BData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-832 to ptr
  store i64 %3, ptr %4, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3f49c

dec_label_pc_3f49c:                               ; preds = %dec_label_pc_3f463, %dec_label_pc_3f49c
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = mul i64 %5, 8
  %7 = add i64 %6, %0
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add i64 %5, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 99 to ptr)
  store ptr %13, ptr %storemerge2.reg2mem, align 8
  br i1 %14, label %dec_label_pc_3f4d2, label %dec_label_pc_3f49c

dec_label_pc_3f4d2:                               ; preds = %dec_label_pc_3f49c
  %15 = load ptr, ptr %stack_var_-832, align 8
  %16 = bitcast ptr %15 to ptr
  %17 = call ptr @memmove(ptr %16, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %15)
  call void @free(ptr %16)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_3f523, label %dec_label_pc_3f51e

dec_label_pc_3f51e:                               ; preds = %dec_label_pc_3f4d2
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f523

dec_label_pc_3f523:                               ; preds = %dec_label_pc_3f51e, %dec_label_pc_3f4d2
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3f525:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_3f558, label %dec_label_pc_3f54e

dec_label_pc_3f54e:                               ; preds = %dec_label_pc_3f525
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3f558:                               ; preds = %dec_label_pc_3f525
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_memmove_45_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_65a35:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_7c84a, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

