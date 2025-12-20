@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3a7f4:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_3a836, label %dec_label_pc_3a82c

dec_label_pc_3a82c:                               ; preds = %dec_label_pc_3a7f4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3a836:                               ; preds = %dec_label_pc_3a7f4
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_3a85f, label %dec_label_pc_3a85a

dec_label_pc_3a85a:                               ; preds = %dec_label_pc_3a836
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a85f

dec_label_pc_3a85f:                               ; preds = %dec_label_pc_3a85a, %dec_label_pc_3a836
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_3a8e3:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3a927

dec_label_pc_3a927:                               ; preds = %dec_label_pc_3a8e3, %dec_label_pc_3a927
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge2.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %0
  %9 = add i64 %8, -816
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %8, -812
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge2.reg2mem, align 8
  br i1 %15, label %dec_label_pc_3a95d, label %dec_label_pc_3a927

dec_label_pc_3a95d:                               ; preds = %dec_label_pc_3a927
  %16 = inttoptr i64 %5 to ptr
  %17 = inttoptr i64 %5 to ptr
  %18 = call ptr @memcpy(ptr %17, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %16)
  call void @free(ptr %17)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_3a9ae, label %dec_label_pc_3a9a9

dec_label_pc_3a9a9:                               ; preds = %dec_label_pc_3a95d
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a9ae

dec_label_pc_3a9ae:                               ; preds = %dec_label_pc_3a9a9, %dec_label_pc_3a95d
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

