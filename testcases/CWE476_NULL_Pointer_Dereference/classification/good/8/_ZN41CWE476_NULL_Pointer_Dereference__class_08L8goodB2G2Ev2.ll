@global_var_48fcc = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.711() local_unnamed_addr {
dec_label_pc_21cbf:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21db2:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.711()
  %3 = call i32 @staticReturnsTrue.711()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = zext i1 %5 to i64
  %7 = and i32 %3, -256
  %8 = sext i32 %7 to i64
  %9 = or i64 %6, %8
  %10 = icmp eq i1 %5, false
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_21e1d, label %dec_label_pc_21de2

dec_label_pc_21de2:                               ; preds = %dec_label_pc_21db2
  %11 = icmp eq i32 %2, 0
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  %spec.select = select i1 %13, i64 %1, i64 0
  %14 = icmp eq i64 %spec.select, 0
  br i1 %14, label %dec_label_pc_21e0e, label %dec_label_pc_21de9

dec_label_pc_21de9:                               ; preds = %dec_label_pc_21de2
  %15 = inttoptr i64 %spec.select to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %17 = inttoptr i64 %spec.select to ptr
  %18 = call i64 @_ZdlPvm(ptr %17, i64 8)
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21e1d

dec_label_pc_21e0e:                               ; preds = %dec_label_pc_21de2
  call void @printLine(ptr @global_var_48fcc)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21e1d

dec_label_pc_21e1d:                               ; preds = %dec_label_pc_21e0e, %dec_label_pc_21de9, %dec_label_pc_21db2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

