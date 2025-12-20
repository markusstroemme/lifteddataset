@global_var_7c820 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_517ed:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-440 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-440, align 8
  %2 = bitcast ptr %stack_var_-440 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = load i64, ptr %stack_var_-440, align 8
  %6 = add i64 %0, -416
  store i64 %5, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_51849

dec_label_pc_51849:                               ; preds = %dec_label_pc_51849, %dec_label_pc_517ed
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %.reload
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i64 %8 to ptr
  store i32 %11, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %14 = load i64, ptr %stack_var_-440, align 8
  %exitcond = icmp eq i64 %13, 100
  store i64 %14, ptr %.reg2mem, align 8
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_51880, label %dec_label_pc_51849

dec_label_pc_51880:                               ; preds = %dec_label_pc_51849
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %17 = load i64, ptr %stack_var_-440, align 8
  %18 = inttoptr i64 %17 to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_518b4, label %dec_label_pc_518af

dec_label_pc_518af:                               ; preds = %dec_label_pc_51880
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_518b4

dec_label_pc_518b4:                               ; preds = %dec_label_pc_518af, %dec_label_pc_51880
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_5198f:
  %0 = call ptr @malloc(i32 200)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 200
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

