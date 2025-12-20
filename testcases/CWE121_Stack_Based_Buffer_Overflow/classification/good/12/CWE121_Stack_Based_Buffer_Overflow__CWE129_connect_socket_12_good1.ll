@global_var_b4828 = external constant [10 x i8]
@global_var_b4858 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e54e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv14.reg2mem = alloca i64, align 8
  %stack_var_-100.2.reg2mem = alloca i32, align 4
  %stack_var_-100.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-100.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  br i1 %3, label %dec_label_pc_e660, label %dec_label_pc_e582

dec_label_pc_e582:                                ; preds = %dec_label_pc_e54e
  store i32 -1, ptr %stack_var_-100.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_e735, label %dec_label_pc_e5aa

dec_label_pc_e5aa:                                ; preds = %dec_label_pc_e582
  %6 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b4828)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_e651, label %dec_label_pc_e601

dec_label_pc_e601:                                ; preds = %dec_label_pc_e5aa
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_e651, label %dec_label_pc_e628

dec_label_pc_e628:                                ; preds = %dec_label_pc_e601
  %15 = sext i32 %12 to i64
  %16 = add i64 %0, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-100.0.ph.reg2mem, align 4
  br label %dec_label_pc_e651

dec_label_pc_e651:                                ; preds = %dec_label_pc_e5aa, %dec_label_pc_e628, %dec_label_pc_e601
  %stack_var_-100.0.ph.reload = load i32, ptr %stack_var_-100.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %4)
  store i32 %stack_var_-100.0.ph.reload, ptr %stack_var_-100.2.reg2mem, align 4
  br label %dec_label_pc_e735

dec_label_pc_e660:                                ; preds = %dec_label_pc_e54e
  store i32 -1, ptr %stack_var_-100.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_e735, label %dec_label_pc_e688

dec_label_pc_e688:                                ; preds = %dec_label_pc_e660
  %22 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %23 = call i32 @inet_addr(ptr @global_var_b4828)
  %24 = call i16 @htons(i16 27015)
  %25 = bitcast ptr %stack_var_-72 to ptr
  %26 = call i32 @connect(i32 %4, ptr nonnull %25, i32 16)
  %27 = icmp eq i32 %26, -1
  store i32 -1, ptr %stack_var_-100.1.ph.reg2mem, align 4
  br i1 %27, label %dec_label_pc_e72b, label %dec_label_pc_e6df

dec_label_pc_e6df:                                ; preds = %dec_label_pc_e688
  %28 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %29 = add i32 %28, 1
  %30 = icmp ult i32 %29, 2
  store i32 -1, ptr %stack_var_-100.1.ph.reg2mem, align 4
  br i1 %30, label %dec_label_pc_e72b, label %dec_label_pc_e706

dec_label_pc_e706:                                ; preds = %dec_label_pc_e6df
  %31 = sext i32 %28 to i64
  %32 = add i64 %0, -22
  %33 = add i64 %32, %31
  %34 = inttoptr i64 %33 to ptr
  store i8 0, ptr %34, align 1
  %35 = bitcast ptr %stack_var_-30 to ptr
  %36 = call i32 @atoi(ptr nonnull %35)
  store i32 %36, ptr %stack_var_-100.1.ph.reg2mem, align 4
  br label %dec_label_pc_e72b

dec_label_pc_e72b:                                ; preds = %dec_label_pc_e688, %dec_label_pc_e706, %dec_label_pc_e6df
  %stack_var_-100.1.ph.reload = load i32, ptr %stack_var_-100.1.ph.reg2mem, align 4
  %37 = call i32 @close(i32 %4)
  store i32 %stack_var_-100.1.ph.reload, ptr %stack_var_-100.2.reg2mem, align 4
  br label %dec_label_pc_e735

dec_label_pc_e735:                                ; preds = %dec_label_pc_e660, %dec_label_pc_e582, %dec_label_pc_e72b, %dec_label_pc_e651
  %stack_var_-100.2.reload = load i32, ptr %stack_var_-100.2.reg2mem, align 4
  %38 = call i32 @globalReturnsTrueOrFalse()
  %39 = icmp eq i32 %38, 0
  store i64 0, ptr %stack_var_-72, align 8
  %40 = icmp ugt i32 %stack_var_-100.2.reload, 9
  br i1 %39, label %dec_label_pc_e7bd, label %dec_label_pc_e743

dec_label_pc_e743:                                ; preds = %dec_label_pc_e735
  br i1 %40, label %dec_label_pc_e7ac, label %dec_label_pc_e777

dec_label_pc_e777:                                ; preds = %dec_label_pc_e743
  %41 = sext i32 %stack_var_-100.2.reload to i64
  %42 = mul i64 %41, 4
  %43 = add i64 %0, -64
  %44 = add i64 %42, %43
  %45 = inttoptr i64 %44 to ptr
  store i32 1, ptr %45, align 4
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_e78d

dec_label_pc_e78d:                                ; preds = %dec_label_pc_e78d, %dec_label_pc_e777
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %46 = mul i64 %indvars.iv14.reload, 4
  %47 = add i64 %46, %43
  %48 = inttoptr i64 %47 to ptr
  %49 = load i32, ptr %48, align 4
  call void @printIntLine(i32 %49)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_e834, label %dec_label_pc_e78d

dec_label_pc_e7ac:                                ; preds = %dec_label_pc_e743
  call void @printLine(ptr @global_var_b4858)
  br label %dec_label_pc_e834

dec_label_pc_e7bd:                                ; preds = %dec_label_pc_e735
  br i1 %40, label %dec_label_pc_e823, label %dec_label_pc_e7f1

dec_label_pc_e7f1:                                ; preds = %dec_label_pc_e7bd
  %50 = sext i32 %stack_var_-100.2.reload to i64
  %51 = mul i64 %50, 4
  %52 = add i64 %0, -64
  %53 = add i64 %51, %52
  %54 = inttoptr i64 %53 to ptr
  store i32 1, ptr %54, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_e807

dec_label_pc_e807:                                ; preds = %dec_label_pc_e807, %dec_label_pc_e7f1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %55 = mul i64 %indvars.iv.reload, 4
  %56 = add i64 %55, %52
  %57 = inttoptr i64 %56 to ptr
  %58 = load i32, ptr %57, align 4
  call void @printIntLine(i32 %58)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_e834, label %dec_label_pc_e807

dec_label_pc_e823:                                ; preds = %dec_label_pc_e7bd
  call void @printLine(ptr @global_var_b4858)
  br label %dec_label_pc_e834

dec_label_pc_e834:                                ; preds = %dec_label_pc_e78d, %dec_label_pc_e807, %dec_label_pc_e823, %dec_label_pc_e7ac
  %59 = call i64 @__readfsqword(i64 40)
  %60 = icmp eq i64 %1, %59
  br i1 %60, label %dec_label_pc_e849, label %dec_label_pc_e844

dec_label_pc_e844:                                ; preds = %dec_label_pc_e834
  call void @__stack_chk_fail()
  br label %dec_label_pc_e849

dec_label_pc_e849:                                ; preds = %dec_label_pc_e844, %dec_label_pc_e834
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

