@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.412() local_unnamed_addr {
dec_label_pc_30130:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3014e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.412()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_301a9, label %dec_label_pc_30170

dec_label_pc_30170:                               ; preds = %dec_label_pc_3014e
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = icmp eq i64 %4, 0
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_301a9, label %dec_label_pc_3019c

dec_label_pc_3019c:                               ; preds = %dec_label_pc_30170
  %9 = inttoptr i64 %4 to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_301a9

dec_label_pc_301a9:                               ; preds = %dec_label_pc_3019c, %dec_label_pc_30170, %dec_label_pc_3014e
  %11 = call i32 @staticReturnsTrue.412()
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i1 %12, false
  %14 = zext i1 %13 to i64
  %15 = and i32 %11, -256
  %16 = sext i32 %15 to i64
  %17 = or i64 %14, %16
  %18 = icmp eq i1 %13, false
  store i64 %17, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_301c4, label %dec_label_pc_301b7

dec_label_pc_301b7:                               ; preds = %dec_label_pc_301a9
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %19 = load i32, ptr %stack_var_-16.0.reload, align 4
  call void @printIntLine(i32 %19)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_301c4

dec_label_pc_301c4:                               ; preds = %dec_label_pc_301b7, %dec_label_pc_301a9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

