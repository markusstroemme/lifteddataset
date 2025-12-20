@global_var_44d70 = external constant [4 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_76f7:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_7715:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-72.0.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-72.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_7765, label %dec_label_pc_7746

dec_label_pc_7746:                                ; preds = %dec_label_pc_7715
  %3 = call ptr @malloc(i32 10)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-72.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_7765, label %dec_label_pc_775b

dec_label_pc_775b:                                ; preds = %dec_label_pc_7746
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7765:                                ; preds = %dec_label_pc_7746, %dec_label_pc_7715
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-72.0.reload = load i64, ptr %stack_var_-72.0.reg2mem, align 8
  %8 = add i64 %7, -48
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_7797

dec_label_pc_7797:                                ; preds = %dec_label_pc_7797, %dec_label_pc_7765
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = mul i64 %storemerge1.reload, 4
  %10 = add i64 %9, %stack_var_-72.0.reload
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %15, 10
  store i64 %15, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_77c0, label %dec_label_pc_7797

dec_label_pc_77c0:                                ; preds = %dec_label_pc_7797
  %16 = inttoptr i64 %stack_var_-72.0.reload to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %18 = inttoptr i64 %stack_var_-72.0.reload to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_77ee, label %dec_label_pc_77e9

dec_label_pc_77e9:                                ; preds = %dec_label_pc_77c0
  call void @__stack_chk_fail()
  br label %dec_label_pc_77ee

dec_label_pc_77ee:                                ; preds = %dec_label_pc_77e9, %dec_label_pc_77c0
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

