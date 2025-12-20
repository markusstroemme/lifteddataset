@global_var_44d70 = external constant [4 x i8]

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_9d73:
  %storemerge2.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %data to i64
  %3 = add i64 %0, -48
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_9dc4

dec_label_pc_9dc4:                                ; preds = %dec_label_pc_9dc4, %dec_label_pc_9d73
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = mul i64 %storemerge2.reload, 4
  %5 = add i64 %4, %2
  %6 = add i64 %3, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i64 %5 to ptr
  store i32 %8, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 10
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_9ded, label %dec_label_pc_9dc4

dec_label_pc_9ded:                                ; preds = %dec_label_pc_9dc4
  %11 = bitcast ptr %rdi to ptr
  %12 = load i32, ptr %11, align 8
  call void @printIntLine(i32 %12)
  %13 = bitcast ptr %data to ptr
  call void @free(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_9e1b, label %dec_label_pc_9e16

dec_label_pc_9e16:                                ; preds = %dec_label_pc_9ded
  call void @__stack_chk_fail()
  br label %dec_label_pc_9e1b

dec_label_pc_9e1b:                                ; preds = %dec_label_pc_9e16, %dec_label_pc_9ded
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_9e1d:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_9e50, label %dec_label_pc_9e46

dec_label_pc_9e46:                                ; preds = %dec_label_pc_9e1d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9e50:                                ; preds = %dec_label_pc_9e1d
  %3 = bitcast ptr %0 to ptr
  call void @anon0(ptr %3)
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

