@global_var_bc4d0 = external constant [10 x i8]
@global_var_bc4e0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_7ad7e:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  %2 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %2, -1
  br i1 %cond, label %dec_label_pc_7ae86, label %dec_label_pc_7add1

dec_label_pc_7add1:                               ; preds = %dec_label_pc_7ad7e
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_bc4d0)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %2, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_7ae7c, label %dec_label_pc_7ae2d

dec_label_pc_7ae2d:                               ; preds = %dec_label_pc_7add1
  %11 = call i32 @recv(i32 %2, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %dec_label_pc_7ae7c, label %dec_label_pc_7ae54

dec_label_pc_7ae54:                               ; preds = %dec_label_pc_7ae2d
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %1, align 4
  br label %dec_label_pc_7ae7c

dec_label_pc_7ae7c:                               ; preds = %dec_label_pc_7ae2d, %dec_label_pc_7ae54, %dec_label_pc_7add1
  %21 = call i32 @close(i32 %2)
  br label %dec_label_pc_7ae86

dec_label_pc_7ae86:                               ; preds = %dec_label_pc_7ad7e, %dec_label_pc_7ae7c
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_7ae9b, label %dec_label_pc_7ae96

dec_label_pc_7ae96:                               ; preds = %dec_label_pc_7ae86
  call void @__stack_chk_fail()
  br label %dec_label_pc_7ae9b

dec_label_pc_7ae9b:                               ; preds = %dec_label_pc_7ae96, %dec_label_pc_7ae86
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7ae9e:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp ugt i32 %3, 9
  br i1 %4, label %dec_label_pc_7af2f, label %dec_label_pc_7aefa

dec_label_pc_7aefa:                               ; preds = %dec_label_pc_7ae9e
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_7af13

dec_label_pc_7af13:                               ; preds = %dec_label_pc_7af13, %dec_label_pc_7aefa
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7af3e, label %dec_label_pc_7af13

dec_label_pc_7af2f:                               ; preds = %dec_label_pc_7ae9e
  call void @printLine(ptr @global_var_bc4e0)
  br label %dec_label_pc_7af3e

dec_label_pc_7af3e:                               ; preds = %dec_label_pc_7af13, %dec_label_pc_7af2f
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %2, %14
  br i1 %15, label %dec_label_pc_7af53, label %dec_label_pc_7af4e

dec_label_pc_7af4e:                               ; preds = %dec_label_pc_7af3e
  call void @__stack_chk_fail()
  br label %dec_label_pc_7af53

dec_label_pc_7af53:                               ; preds = %dec_label_pc_7af4e, %dec_label_pc_7af3e
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_7b122:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_7b195, label %dec_label_pc_7b15f

dec_label_pc_7b15f:                               ; preds = %dec_label_pc_7b122
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7b195

dec_label_pc_7b195:                               ; preds = %dec_label_pc_7b15f, %dec_label_pc_7b122
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

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

