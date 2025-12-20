@global_var_b6f80 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3f799:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3f88c, label %dec_label_pc_3f7d3

dec_label_pc_3f7d3:                               ; preds = %dec_label_pc_3f799
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i64 -4, i64 28
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3f7fb, label %dec_label_pc_3f7e8

dec_label_pc_3f7e8:                               ; preds = %dec_label_pc_3f7d3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3f7fb:                               ; preds = %dec_label_pc_3f7d3, %dec_label_pc_3f7fb
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_3f81f, label %dec_label_pc_3f7fb

dec_label_pc_3f81f:                               ; preds = %dec_label_pc_3f7fb
  br i1 %3, label %dec_label_pc_3f871, label %dec_label_pc_3f825

dec_label_pc_3f825:                               ; preds = %dec_label_pc_3f81f
  %11 = add i64 %spec.select, %5
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3f848

dec_label_pc_3f848:                               ; preds = %dec_label_pc_3f848, %dec_label_pc_3f825
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3f880, label %dec_label_pc_3f848

dec_label_pc_3f871:                               ; preds = %dec_label_pc_3f81f
  call void @printLine(ptr @global_var_b6f80)
  br label %dec_label_pc_3f880

dec_label_pc_3f880:                               ; preds = %dec_label_pc_3f848, %dec_label_pc_3f871
  call void @free(ptr %4)
  br label %dec_label_pc_3f88c

dec_label_pc_3f88c:                               ; preds = %dec_label_pc_3f880, %dec_label_pc_3f799
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a039c:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

