@global_var_baaa0 = external constant [16 x i8]
@global_var_baab0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_88732:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_ec080, align 8
  %3 = bitcast ptr %stack_var_-30 to ptr
  %4 = call ptr @fgets(ptr nonnull %3, i32 14, ptr %2)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_887a8, label %dec_label_pc_88794

dec_label_pc_88794:                               ; preds = %dec_label_pc_88732
  %8 = call i32 @atoi(ptr nonnull %3)
  store i32 %8, ptr %1, align 4
  br label %dec_label_pc_887b7

dec_label_pc_887a8:                               ; preds = %dec_label_pc_88732
  call void @printLine(ptr @global_var_baaa0)
  br label %dec_label_pc_887b7

dec_label_pc_887b7:                               ; preds = %dec_label_pc_887a8, %dec_label_pc_88794
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_887cc, label %dec_label_pc_887c7

dec_label_pc_887c7:                               ; preds = %dec_label_pc_887b7
  call void @__stack_chk_fail()
  br label %dec_label_pc_887cc

dec_label_pc_887cc:                               ; preds = %dec_label_pc_887c7, %dec_label_pc_887b7
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_887ce:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_88806, label %dec_label_pc_887f3

dec_label_pc_887f3:                               ; preds = %dec_label_pc_887ce
  call void @exit(i32 -1)
  unreachable

dec_label_pc_88806:                               ; preds = %dec_label_pc_887ce, %dec_label_pc_88806
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_8882a, label %dec_label_pc_88806

dec_label_pc_8882a:                               ; preds = %dec_label_pc_88806
  %7 = bitcast ptr %rdi to ptr
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 9
  br i1 %9, label %dec_label_pc_8888e, label %dec_label_pc_8883f

dec_label_pc_8883f:                               ; preds = %dec_label_pc_8882a
  %10 = sext i32 %8 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %1
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_88865

dec_label_pc_88865:                               ; preds = %dec_label_pc_88865, %dec_label_pc_8883f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %1
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8889d, label %dec_label_pc_88865

dec_label_pc_8888e:                               ; preds = %dec_label_pc_8882a
  call void @printLine(ptr @global_var_baab0)
  br label %dec_label_pc_8889d

dec_label_pc_8889d:                               ; preds = %dec_label_pc_88865, %dec_label_pc_8888e
  call void @free(ptr %0)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_88a9f:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_88b12, label %dec_label_pc_88adc

dec_label_pc_88adc:                               ; preds = %dec_label_pc_88a9f
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_88b12

dec_label_pc_88b12:                               ; preds = %dec_label_pc_88adc, %dec_label_pc_88a9f
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

