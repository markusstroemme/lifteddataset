@global_var_ba270 = external constant [10 x i8]
@global_var_ba280 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_6987 = external constant i16

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_8507a:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  %2 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %2, -1
  br i1 %cond, label %dec_label_pc_85182, label %dec_label_pc_850cd

dec_label_pc_850cd:                               ; preds = %dec_label_pc_8507a
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_ba270)
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %2, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_85178, label %dec_label_pc_85129

dec_label_pc_85129:                               ; preds = %dec_label_pc_850cd
  %11 = call i32 @recv(i32 %2, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %dec_label_pc_85178, label %dec_label_pc_85150

dec_label_pc_85150:                               ; preds = %dec_label_pc_85129
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %1, align 4
  br label %dec_label_pc_85178

dec_label_pc_85178:                               ; preds = %dec_label_pc_85129, %dec_label_pc_85150, %dec_label_pc_850cd
  %21 = call i32 @close(i32 %2)
  br label %dec_label_pc_85182

dec_label_pc_85182:                               ; preds = %dec_label_pc_8507a, %dec_label_pc_85178
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_85197, label %dec_label_pc_85192

dec_label_pc_85192:                               ; preds = %dec_label_pc_85182
  call void @__stack_chk_fail()
  br label %dec_label_pc_85197

dec_label_pc_85197:                               ; preds = %dec_label_pc_85192, %dec_label_pc_85182
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_8519a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_851d2, label %dec_label_pc_851bf

dec_label_pc_851bf:                               ; preds = %dec_label_pc_8519a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_851d2:                               ; preds = %dec_label_pc_8519a, %dec_label_pc_851d2
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_851f6, label %dec_label_pc_851d2

dec_label_pc_851f6:                               ; preds = %dec_label_pc_851d2
  %7 = bitcast ptr %rdi to ptr
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 9
  br i1 %9, label %dec_label_pc_8525a, label %dec_label_pc_8520b

dec_label_pc_8520b:                               ; preds = %dec_label_pc_851f6
  %10 = sext i32 %8 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %1
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_85231

dec_label_pc_85231:                               ; preds = %dec_label_pc_85231, %dec_label_pc_8520b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %1
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_85269, label %dec_label_pc_85231

dec_label_pc_8525a:                               ; preds = %dec_label_pc_851f6
  call void @printLine(ptr @global_var_ba280)
  br label %dec_label_pc_85269

dec_label_pc_85269:                               ; preds = %dec_label_pc_85231, %dec_label_pc_8525a
  call void @free(ptr %0)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_8546b:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_854de, label %dec_label_pc_854a8

dec_label_pc_854a8:                               ; preds = %dec_label_pc_8546b
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_854de

dec_label_pc_854de:                               ; preds = %dec_label_pc_854a8, %dec_label_pc_8546b
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

