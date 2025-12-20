@global_var_b5da8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_307dc:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 7, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_30826, label %dec_label_pc_30821

dec_label_pc_30821:                               ; preds = %dec_label_pc_307dc
  call void @__stack_chk_fail()
  br label %dec_label_pc_30826

dec_label_pc_30826:                               ; preds = %dec_label_pc_30821, %dec_label_pc_307dc
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_309bb:
  %0 = alloca i64, align 8
  %.reg2mem4 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %.reg2mem, align 8
  br i1 %6, label %dec_label_pc_30a04, label %dec_label_pc_309f1

dec_label_pc_309f1:                               ; preds = %dec_label_pc_309bb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_30a04:                               ; preds = %dec_label_pc_309bb, %dec_label_pc_30a04
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext1 = mul i64 %.reload, 4294967296
  %7 = ashr exact i64 %sext1, 30
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %.reload, 1
  %11 = and i64 %10, 4294967295
  %12 = trunc i64 %10 to i32
  %13 = icmp slt i32 %12, 10
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %13, label %dec_label_pc_30a04, label %dec_label_pc_30a28

dec_label_pc_30a28:                               ; preds = %dec_label_pc_30a04
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %dec_label_pc_30a7a, label %dec_label_pc_30a2e

dec_label_pc_30a2e:                               ; preds = %dec_label_pc_30a28
  %sext3 = mul i64 %1, 4294967296
  %15 = ashr exact i64 %sext3, 30
  %16 = add i64 %15, %4
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %.reg2mem4, align 8
  br label %dec_label_pc_30a51

dec_label_pc_30a51:                               ; preds = %dec_label_pc_30a2e, %dec_label_pc_30a51
  %.reload5 = load i64, ptr %.reg2mem4, align 8
  %sext = mul i64 %.reload5, 4294967296
  %18 = ashr exact i64 %sext, 30
  %19 = add i64 %18, %4
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = add nuw nsw i64 %.reload5, 1
  %23 = and i64 %22, 4294967295
  %24 = trunc i64 %22 to i32
  %25 = icmp slt i32 %24, 10
  store i64 %23, ptr %.reg2mem4, align 8
  br i1 %25, label %dec_label_pc_30a51, label %dec_label_pc_30a89

dec_label_pc_30a7a:                               ; preds = %dec_label_pc_30a28
  call void @printLine(ptr @global_var_b5da8)
  br label %dec_label_pc_30a89

dec_label_pc_30a89:                               ; preds = %dec_label_pc_30a51, %dec_label_pc_30a7a
  call void @free(ptr %3)
  ret void
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

