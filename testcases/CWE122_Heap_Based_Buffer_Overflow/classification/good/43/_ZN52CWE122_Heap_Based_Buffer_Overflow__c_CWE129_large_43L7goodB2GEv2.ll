@global_var_bb2f8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_8c154:
  %0 = ptrtoint ptr %arg1 to i64
  store i32 10, ptr %arg1, align 4
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_8c16d:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-32)
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_8c1c3, label %dec_label_pc_8c1b0

dec_label_pc_8c1b0:                               ; preds = %dec_label_pc_8c16d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8c1c3:                               ; preds = %dec_label_pc_8c16d, %dec_label_pc_8c1c3
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_8c1e7, label %dec_label_pc_8c1c3

dec_label_pc_8c1e7:                               ; preds = %dec_label_pc_8c1c3
  %9 = load i32, ptr %stack_var_-32, align 4
  %10 = icmp ugt i32 %9, 9
  br i1 %10, label %dec_label_pc_8c242, label %dec_label_pc_8c1f6

dec_label_pc_8c1f6:                               ; preds = %dec_label_pc_8c1e7
  %11 = sext i32 %9 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_8c219

dec_label_pc_8c219:                               ; preds = %dec_label_pc_8c219, %dec_label_pc_8c1f6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %3
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8c251, label %dec_label_pc_8c219

dec_label_pc_8c242:                               ; preds = %dec_label_pc_8c1e7
  call void @printLine(ptr @global_var_bb2f8)
  br label %dec_label_pc_8c251

dec_label_pc_8c251:                               ; preds = %dec_label_pc_8c219, %dec_label_pc_8c242
  call void @free(ptr %2)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_8c272, label %dec_label_pc_8c26d

dec_label_pc_8c26d:                               ; preds = %dec_label_pc_8c251
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8c272

dec_label_pc_8c272:                               ; preds = %dec_label_pc_8c26d, %dec_label_pc_8c251
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

