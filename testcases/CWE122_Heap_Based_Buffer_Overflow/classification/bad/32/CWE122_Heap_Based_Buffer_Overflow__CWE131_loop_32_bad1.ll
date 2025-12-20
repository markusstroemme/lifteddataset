@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9993:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_99f0, label %dec_label_pc_99e6

dec_label_pc_99e6:                                ; preds = %dec_label_pc_9993
  call void @exit(i32 -1)
  unreachable

dec_label_pc_99f0:                                ; preds = %dec_label_pc_9993
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = add i64 %4, -48
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_9a38

dec_label_pc_9a38:                                ; preds = %dec_label_pc_99f0, %dec_label_pc_9a38
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
  br i1 %16, label %dec_label_pc_9a61, label %dec_label_pc_9a38

dec_label_pc_9a61:                                ; preds = %dec_label_pc_9a38
  %17 = bitcast ptr %1 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  call void @free(ptr %1)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_9a8f, label %dec_label_pc_9a8a

dec_label_pc_9a8a:                                ; preds = %dec_label_pc_9a61
  call void @__stack_chk_fail()
  br label %dec_label_pc_9a8f

dec_label_pc_9a8f:                                ; preds = %dec_label_pc_9a8a, %dec_label_pc_9a61
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

