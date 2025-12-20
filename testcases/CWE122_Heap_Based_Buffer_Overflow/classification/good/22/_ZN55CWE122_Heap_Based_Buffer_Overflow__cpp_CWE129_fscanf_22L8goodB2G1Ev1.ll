@global_var_ac184 = external constant [3 x i8]
@global_var_ac1a8 = external constant [21 x i8]
@global_var_ac1c0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_dc134 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_39d1b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_ac184, ptr nonnull %stack_var_-20)
  store i32 0, ptr @global_var_dc134, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  %4 = call i64 @anon1(i32 %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_39d88, label %dec_label_pc_39d83

dec_label_pc_39d83:                               ; preds = %dec_label_pc_39d1b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39d88

dec_label_pc_39d88:                               ; preds = %dec_label_pc_39d83, %dec_label_pc_39d1b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i32 %arg1) local_unnamed_addr {
dec_label_pc_39f13:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc134, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_39f40, label %dec_label_pc_39f2c

dec_label_pc_39f2c:                               ; preds = %dec_label_pc_39f13
  call void @printLine(ptr @global_var_ac1a8)
  br label %dec_label_pc_39ff5

dec_label_pc_39f40:                               ; preds = %dec_label_pc_39f13
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_39f57

dec_label_pc_39f57:                               ; preds = %dec_label_pc_39f57, %dec_label_pc_39f40
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_39f7b, label %dec_label_pc_39f57

dec_label_pc_39f7b:                               ; preds = %dec_label_pc_39f57
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_39fd3, label %dec_label_pc_39f87

dec_label_pc_39f87:                               ; preds = %dec_label_pc_39f7b
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_39faa

dec_label_pc_39faa:                               ; preds = %dec_label_pc_39faa, %dec_label_pc_39f87
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_39fe2, label %dec_label_pc_39faa

dec_label_pc_39fd3:                               ; preds = %dec_label_pc_39f7b
  call void @printLine(ptr @global_var_ac1c0)
  br label %dec_label_pc_39fe2

dec_label_pc_39fe2:                               ; preds = %dec_label_pc_39faa, %dec_label_pc_39fd3
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_39ff5, label %dec_label_pc_39fe9

dec_label_pc_39fe9:                               ; preds = %dec_label_pc_39fe2
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_39ff5

dec_label_pc_39ff5:                               ; preds = %dec_label_pc_39fe9, %dec_label_pc_39fe2, %dec_label_pc_39f2c
  ret i64 ptrtoint (ptr @0 to i64)
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

