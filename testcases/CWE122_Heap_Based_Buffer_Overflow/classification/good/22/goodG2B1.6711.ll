@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_memmove_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_7a425 = external constant [21 x i8]
@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_3e3a7:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_memmove_22_goodG2B1Global, align 4
  %2 = call ptr @anon0(ptr null)
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3e3fd

dec_label_pc_3e3fd:                               ; preds = %dec_label_pc_3e3a7, %dec_label_pc_3e3fd
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %3 = ptrtoint ptr %storemerge2.reload to i64
  %4 = mul i64 %3, 8
  %5 = add i64 %4, %0
  %6 = add i64 %5, -816
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %5, -812
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add i64 %3, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge2.reg2mem, align 8
  br i1 %12, label %dec_label_pc_3e433, label %dec_label_pc_3e3fd

dec_label_pc_3e433:                               ; preds = %dec_label_pc_3e3fd
  %13 = bitcast ptr %2 to ptr
  %14 = call ptr @memmove(ptr %13, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %2)
  call void @free(ptr %13)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_3e484, label %dec_label_pc_3e47f

dec_label_pc_3e47f:                               ; preds = %dec_label_pc_3e433
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e484

dec_label_pc_3e484:                               ; preds = %dec_label_pc_3e47f, %dec_label_pc_3e433
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_3e5c3:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_memmove_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3e5ee, label %dec_label_pc_3e5dd

dec_label_pc_3e5dd:                               ; preds = %dec_label_pc_3e5c3
  call void @printLine(ptr @global_var_7a425)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_3e60d

dec_label_pc_3e5ee:                               ; preds = %dec_label_pc_3e5c3
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3e60d, label %dec_label_pc_3e603

dec_label_pc_3e603:                               ; preds = %dec_label_pc_3e5ee
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3e60d:                               ; preds = %dec_label_pc_3e5ee, %dec_label_pc_3e5dd
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
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

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

