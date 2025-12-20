@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_840a:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-72.0.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr inttoptr (i64 282056 to ptr), align 8
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-72.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_8457, label %dec_label_pc_8438

dec_label_pc_8438:                                ; preds = %dec_label_pc_840a
  %4 = call ptr @malloc(i32 10)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %stack_var_-72.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_8457, label %dec_label_pc_844d

dec_label_pc_844d:                                ; preds = %dec_label_pc_8438
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8457:                                ; preds = %dec_label_pc_8438, %dec_label_pc_840a
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-72.0.reload = load i64, ptr %stack_var_-72.0.reg2mem, align 8
  %9 = add i64 %8, -48
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_8489

dec_label_pc_8489:                                ; preds = %dec_label_pc_8489, %dec_label_pc_8457
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 4
  %11 = add i64 %10, %stack_var_-72.0.reload
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 10
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_84b2, label %dec_label_pc_8489

dec_label_pc_84b2:                                ; preds = %dec_label_pc_8489
  %17 = inttoptr i64 %stack_var_-72.0.reload to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = inttoptr i64 %stack_var_-72.0.reload to ptr
  call void @free(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_84e0, label %dec_label_pc_84db

dec_label_pc_84db:                                ; preds = %dec_label_pc_84b2
  call void @__stack_chk_fail()
  br label %dec_label_pc_84e0

dec_label_pc_84e0:                                ; preds = %dec_label_pc_84db, %dec_label_pc_84b2
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

