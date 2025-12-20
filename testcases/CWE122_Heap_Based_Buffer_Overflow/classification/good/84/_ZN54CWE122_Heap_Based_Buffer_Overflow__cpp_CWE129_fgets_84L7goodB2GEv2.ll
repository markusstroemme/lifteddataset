@global_var_aba68 = external constant [16 x i8]
@global_var_aba78 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_33c4c:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_dc090, align 8
  %3 = bitcast ptr %stack_var_-30 to ptr
  %4 = call ptr @fgets(ptr nonnull %3, i32 14, ptr %2)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_33cc2, label %dec_label_pc_33cae

dec_label_pc_33cae:                               ; preds = %dec_label_pc_33c4c
  %8 = call i32 @atoi(ptr nonnull %3)
  store i32 %8, ptr %1, align 4
  br label %dec_label_pc_33cd1

dec_label_pc_33cc2:                               ; preds = %dec_label_pc_33c4c
  call void @printLine(ptr @global_var_aba68)
  br label %dec_label_pc_33cd1

dec_label_pc_33cd1:                               ; preds = %dec_label_pc_33cc2, %dec_label_pc_33cae
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_33ce6, label %dec_label_pc_33ce1

dec_label_pc_33ce1:                               ; preds = %dec_label_pc_33cd1
  call void @__stack_chk_fail()
  br label %dec_label_pc_33ce6

dec_label_pc_33ce6:                               ; preds = %dec_label_pc_33ce1, %dec_label_pc_33cd1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_33ce8:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_33d0f

dec_label_pc_33d0f:                               ; preds = %dec_label_pc_33d0f, %dec_label_pc_33ce8
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %3 = mul i64 %indvars.iv4.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_33d33, label %dec_label_pc_33d0f

dec_label_pc_33d33:                               ; preds = %dec_label_pc_33d0f
  %6 = bitcast ptr %rdi to ptr
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %dec_label_pc_33d97, label %dec_label_pc_33d48

dec_label_pc_33d48:                               ; preds = %dec_label_pc_33d33
  %9 = sext i32 %7 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_33d6e

dec_label_pc_33d6e:                               ; preds = %dec_label_pc_33d6e, %dec_label_pc_33d48
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_33da6, label %dec_label_pc_33d6e

dec_label_pc_33d97:                               ; preds = %dec_label_pc_33d33
  call void @printLine(ptr @global_var_aba78)
  br label %dec_label_pc_33da6

dec_label_pc_33da6:                               ; preds = %dec_label_pc_33d6e, %dec_label_pc_33d97
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %dec_label_pc_33db9, label %dec_label_pc_33dad

dec_label_pc_33dad:                               ; preds = %dec_label_pc_33da6
  %18 = inttoptr i64 %2 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_33db9

dec_label_pc_33db9:                               ; preds = %dec_label_pc_33dad, %dec_label_pc_33da6
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_33fa5:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_34018, label %dec_label_pc_33fe2

dec_label_pc_33fe2:                               ; preds = %dec_label_pc_33fa5
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34018

dec_label_pc_34018:                               ; preds = %dec_label_pc_33fe2, %dec_label_pc_33fa5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

