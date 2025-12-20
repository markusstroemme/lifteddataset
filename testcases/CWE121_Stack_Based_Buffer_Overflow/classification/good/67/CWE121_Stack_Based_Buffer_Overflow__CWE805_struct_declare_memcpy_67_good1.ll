@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_179f8:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  call void @anon0(i64 %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_17a56, label %dec_label_pc_17a51

dec_label_pc_17a51:                               ; preds = %dec_label_pc_179f8
  call void @__stack_chk_fail()
  br label %dec_label_pc_17a56

dec_label_pc_17a56:                               ; preds = %dec_label_pc_17a51, %dec_label_pc_179f8
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_17b27:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_17b67

dec_label_pc_17b67:                               ; preds = %dec_label_pc_17b27, %dec_label_pc_17b67
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %2 = ptrtoint ptr %storemerge1.reload to i64
  %3 = mul i64 %2, 8
  %4 = add i64 %3, %0
  %5 = add i64 %4, -816
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %4, -812
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add i64 %2, 1
  %10 = inttoptr i64 %9 to ptr
  %11 = icmp ugt ptr %10, inttoptr (i64 99 to ptr)
  store ptr %10, ptr %storemerge1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_17b9d, label %dec_label_pc_17b67

dec_label_pc_17b9d:                               ; preds = %dec_label_pc_17b67
  %12 = inttoptr i64 %myStruct to ptr
  %13 = call ptr @memcpy(ptr %12, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %14 = inttoptr i64 %myStruct to ptr
  call void @printStructLine(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_17bdf, label %dec_label_pc_17bda

dec_label_pc_17bda:                               ; preds = %dec_label_pc_17b9d
  call void @__stack_chk_fail()
  br label %dec_label_pc_17bdf

dec_label_pc_17bdf:                               ; preds = %dec_label_pc_17bda, %dec_label_pc_17b9d
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

