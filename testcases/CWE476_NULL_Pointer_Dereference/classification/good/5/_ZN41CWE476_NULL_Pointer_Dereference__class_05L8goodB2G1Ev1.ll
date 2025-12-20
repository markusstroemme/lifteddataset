@staticTrue = external local_unnamed_addr global i32
@staticFalse = external local_unnamed_addr global i32
@global_var_48f61 = external constant [21 x i8]
@global_var_48f76 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_216d2:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @staticFalse, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2170b, label %dec_label_pc_216fa

dec_label_pc_216fa:                               ; preds = %dec_label_pc_216d2
  call void @printLine(ptr @global_var_48f61)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21746

dec_label_pc_2170b:                               ; preds = %dec_label_pc_216d2
  %4 = load i32, ptr @staticTrue, align 4
  %5 = icmp eq i32 %4, 0
  %spec.select = select i1 %5, i64 %1, i64 0
  %6 = icmp eq i64 %spec.select, 0
  br i1 %6, label %dec_label_pc_21737, label %dec_label_pc_21712

dec_label_pc_21712:                               ; preds = %dec_label_pc_2170b
  %7 = inttoptr i64 %spec.select to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  %9 = inttoptr i64 %spec.select to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  store i64 %10, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21746

dec_label_pc_21737:                               ; preds = %dec_label_pc_2170b
  call void @printLine(ptr @global_var_48f76)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21746

dec_label_pc_21746:                               ; preds = %dec_label_pc_21737, %dec_label_pc_21712, %dec_label_pc_216fa
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

