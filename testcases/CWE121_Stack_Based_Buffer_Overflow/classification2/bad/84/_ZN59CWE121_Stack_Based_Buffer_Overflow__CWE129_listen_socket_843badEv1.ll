@global_var_be430 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_86f5c:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  %2 = call i32 @socket(i32 2, i32 1, i32 6)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_870ac, label %dec_label_pc_86fb6

dec_label_pc_86fb6:                               ; preds = %dec_label_pc_86f5c
  %4 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @bind(i32 %2, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_8709c.thread4, label %dec_label_pc_87007

dec_label_pc_87007:                               ; preds = %dec_label_pc_86fb6
  %11 = call i32 @listen(i32 %2, i32 5)
  %12 = icmp eq i32 %11, -1
  %13 = icmp eq i1 %12, false
  %14 = icmp eq i1 %13, false
  br i1 %14, label %dec_label_pc_8709c.thread4, label %dec_label_pc_87020

dec_label_pc_87020:                               ; preds = %dec_label_pc_87007
  %15 = call i32 @accept(i32 %2, ptr null, ptr null)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %dec_label_pc_8709c.thread4, label %dec_label_pc_8703d

dec_label_pc_8703d:                               ; preds = %dec_label_pc_87020
  %17 = call i32 @recv(i32 %15, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %dec_label_pc_870a2, label %dec_label_pc_87064

dec_label_pc_87064:                               ; preds = %dec_label_pc_8703d
  %20 = ptrtoint ptr %stack_var_-8 to i64
  %21 = sext i32 %17 to i64
  %22 = add i64 %20, -22
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = bitcast ptr %stack_var_-30 to ptr
  %26 = call i32 @atoi(ptr nonnull %25)
  store i32 %26, ptr %1, align 4
  br label %dec_label_pc_870a2

dec_label_pc_8709c.thread4:                       ; preds = %dec_label_pc_87020, %dec_label_pc_87007, %dec_label_pc_86fb6
  %27 = call i32 @close(i32 %2)
  br label %dec_label_pc_870ac

dec_label_pc_870a2:                               ; preds = %dec_label_pc_87064, %dec_label_pc_8703d
  %28 = call i32 @close(i32 %2)
  %29 = call i32 @close(i32 %15)
  br label %dec_label_pc_870ac

dec_label_pc_870ac:                               ; preds = %dec_label_pc_86f5c, %dec_label_pc_8709c.thread4, %dec_label_pc_870a2
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  br i1 %31, label %dec_label_pc_870c1, label %dec_label_pc_870bc

dec_label_pc_870bc:                               ; preds = %dec_label_pc_870ac
  call void @__stack_chk_fail()
  br label %dec_label_pc_870c1

dec_label_pc_870c1:                               ; preds = %dec_label_pc_870bc, %dec_label_pc_870ac
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_870c4:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %dec_label_pc_8714a, label %dec_label_pc_87115

dec_label_pc_87115:                               ; preds = %dec_label_pc_870c4
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_8712e

dec_label_pc_8712e:                               ; preds = %dec_label_pc_8712e, %dec_label_pc_87115
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_87159, label %dec_label_pc_8712e

dec_label_pc_8714a:                               ; preds = %dec_label_pc_870c4
  call void @printLine(ptr @global_var_be430)
  br label %dec_label_pc_87159

dec_label_pc_87159:                               ; preds = %dec_label_pc_8712e, %dec_label_pc_8714a
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %2, %14
  br i1 %15, label %dec_label_pc_8716e, label %dec_label_pc_87169

dec_label_pc_87169:                               ; preds = %dec_label_pc_87159
  call void @__stack_chk_fail()
  br label %dec_label_pc_8716e

dec_label_pc_8716e:                               ; preds = %dec_label_pc_87169, %dec_label_pc_87159
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_87462:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_874d5, label %dec_label_pc_8749f

dec_label_pc_8749f:                               ; preds = %dec_label_pc_87462
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_874d5

dec_label_pc_874d5:                               ; preds = %dec_label_pc_8749f, %dec_label_pc_87462
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

