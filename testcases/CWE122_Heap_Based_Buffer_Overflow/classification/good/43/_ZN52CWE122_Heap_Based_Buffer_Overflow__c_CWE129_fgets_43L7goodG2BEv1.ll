@global_var_ba330 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_85a65:
  %0 = ptrtoint ptr %arg1 to i64
  store i32 7, ptr %arg1, align 4
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_85a7e:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-32)
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %5, label %dec_label_pc_85ad4, label %dec_label_pc_85ac1

dec_label_pc_85ac1:                               ; preds = %dec_label_pc_85a7e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_85ad4:                               ; preds = %dec_label_pc_85a7e, %dec_label_pc_85ad4
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %6 = mul i64 %indvars.iv4.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_85af8, label %dec_label_pc_85ad4

dec_label_pc_85af8:                               ; preds = %dec_label_pc_85ad4
  %9 = load i32, ptr %stack_var_-32, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %dec_label_pc_85b4b, label %dec_label_pc_85aff

dec_label_pc_85aff:                               ; preds = %dec_label_pc_85af8
  %11 = sext i32 %9 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_85b22

dec_label_pc_85b22:                               ; preds = %dec_label_pc_85b22, %dec_label_pc_85aff
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %3
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_85b5a, label %dec_label_pc_85b22

dec_label_pc_85b4b:                               ; preds = %dec_label_pc_85af8
  call void @printLine(ptr @global_var_ba330)
  br label %dec_label_pc_85b5a

dec_label_pc_85b5a:                               ; preds = %dec_label_pc_85b22, %dec_label_pc_85b4b
  call void @free(ptr %2)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_85b7b, label %dec_label_pc_85b76

dec_label_pc_85b76:                               ; preds = %dec_label_pc_85b5a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_85b7b

dec_label_pc_85b7b:                               ; preds = %dec_label_pc_85b76, %dec_label_pc_85b5a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

