@global_var_b7058 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2b982:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %. = select i1 %3, i32 7, i32 10
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_2ba44, label %dec_label_pc_2b9fe

dec_label_pc_2b9fe:                               ; preds = %dec_label_pc_2b982
  %6 = mul i32 %., 4
  %7 = zext i32 %6 to i64
  %8 = add i64 %0, -48
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_2ba14

dec_label_pc_2ba14:                               ; preds = %dec_label_pc_2ba14, %dec_label_pc_2b9fe
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %11 = mul i64 %indvars.iv7.reload, 4
  %12 = add i64 %11, %8
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_2babb, label %dec_label_pc_2ba14

dec_label_pc_2ba44:                               ; preds = %dec_label_pc_2b982
  br i1 %3, label %dec_label_pc_2ba78, label %dec_label_pc_2baaa

dec_label_pc_2ba78:                               ; preds = %dec_label_pc_2ba44
  %15 = mul i32 %., 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %0, -48
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i32 1, ptr %19, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2ba8e

dec_label_pc_2ba8e:                               ; preds = %dec_label_pc_2ba8e, %dec_label_pc_2ba78
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %20 = mul i64 %indvars.iv.reload, 4
  %21 = add i64 %20, %17
  %22 = inttoptr i64 %21 to ptr
  %23 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %23)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2babb, label %dec_label_pc_2ba8e

dec_label_pc_2baaa:                               ; preds = %dec_label_pc_2ba44
  call void @printLine(ptr @global_var_b7058)
  br label %dec_label_pc_2babb

dec_label_pc_2babb:                               ; preds = %dec_label_pc_2ba14, %dec_label_pc_2ba8e, %dec_label_pc_2baaa
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  br i1 %25, label %dec_label_pc_2bad0, label %dec_label_pc_2bacb

dec_label_pc_2bacb:                               ; preds = %dec_label_pc_2babb
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bad0

dec_label_pc_2bad0:                               ; preds = %dec_label_pc_2bacb, %dec_label_pc_2babb
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

