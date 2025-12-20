@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b73f:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_b781, label %dec_label_pc_b777

dec_label_pc_b777:                                ; preds = %dec_label_pc_b73f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b781:                                ; preds = %dec_label_pc_b73f
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_b7aa, label %dec_label_pc_b7a5

dec_label_pc_b7a5:                                ; preds = %dec_label_pc_b781
  call void @__stack_chk_fail()
  br label %dec_label_pc_b7aa

dec_label_pc_b7aa:                                ; preds = %dec_label_pc_b7a5, %dec_label_pc_b781
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_b82e:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %0, -48
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_b88b

dec_label_pc_b88b:                                ; preds = %dec_label_pc_b82e, %dec_label_pc_b88b
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %8, %5
  %10 = add i64 %6, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i64 %9 to ptr
  store i32 %12, ptr %13, align 4
  %14 = add i64 %7, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 9 to ptr)
  store ptr %15, ptr %storemerge1.reg2mem, align 8
  br i1 %16, label %dec_label_pc_b8b4, label %dec_label_pc_b88b

dec_label_pc_b8b4:                                ; preds = %dec_label_pc_b88b
  %17 = inttoptr i64 %5 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = inttoptr i64 %5 to ptr
  call void @free(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_b8e2, label %dec_label_pc_b8dd

dec_label_pc_b8dd:                                ; preds = %dec_label_pc_b8b4
  call void @__stack_chk_fail()
  br label %dec_label_pc_b8e2

dec_label_pc_b8e2:                                ; preds = %dec_label_pc_b8dd, %dec_label_pc_b8b4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

