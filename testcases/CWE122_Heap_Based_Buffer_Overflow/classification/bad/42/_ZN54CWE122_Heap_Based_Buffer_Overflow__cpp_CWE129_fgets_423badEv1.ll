@global_var_aae20 = external constant [16 x i8]
@global_var_aae30 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0(i32 %arg1) local_unnamed_addr {
dec_label_pc_2d6f2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_2d758, label %dec_label_pc_2d747

dec_label_pc_2d747:                               ; preds = %dec_label_pc_2d6f2
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_2d767

dec_label_pc_2d758:                               ; preds = %dec_label_pc_2d6f2
  call void @printLine(ptr @global_var_aae20)
  store i32 %arg1, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_2d767

dec_label_pc_2d767:                               ; preds = %dec_label_pc_2d758, %dec_label_pc_2d747
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %8 = zext i32 %stack_var_-44.0.reload to i64
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2d77e, label %dec_label_pc_2d779

dec_label_pc_2d779:                               ; preds = %dec_label_pc_2d767
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2d77e

dec_label_pc_2d77e:                               ; preds = %dec_label_pc_2d779, %dec_label_pc_2d767
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_2d780:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @anon0(i32 -1)
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_2d7b7

dec_label_pc_2d7b7:                               ; preds = %dec_label_pc_2d7b7, %dec_label_pc_2d780
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %4 = mul i64 %indvars.iv5.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2d7db, label %dec_label_pc_2d7b7

dec_label_pc_2d7db:                               ; preds = %dec_label_pc_2d7b7
  %7 = trunc i64 %2 to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_2d82d, label %dec_label_pc_2d7e1

dec_label_pc_2d7e1:                               ; preds = %dec_label_pc_2d7db
  %sext = mul i64 %2, 4294967296
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2d804

dec_label_pc_2d804:                               ; preds = %dec_label_pc_2d804, %dec_label_pc_2d7e1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2d83c, label %dec_label_pc_2d804

dec_label_pc_2d82d:                               ; preds = %dec_label_pc_2d7db
  call void @printLine(ptr @global_var_aae30)
  br label %dec_label_pc_2d83c

dec_label_pc_2d83c:                               ; preds = %dec_label_pc_2d804, %dec_label_pc_2d82d
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_2d84f, label %dec_label_pc_2d843

dec_label_pc_2d843:                               ; preds = %dec_label_pc_2d83c
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_2d84f

dec_label_pc_2d84f:                               ; preds = %dec_label_pc_2d843, %dec_label_pc_2d83c
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

