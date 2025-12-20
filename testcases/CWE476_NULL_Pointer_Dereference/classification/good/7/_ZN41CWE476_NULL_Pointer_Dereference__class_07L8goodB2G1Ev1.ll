@staticFive = external local_unnamed_addr global i32
@global_var_48f95 = external constant [21 x i8]
@global_var_48faa = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21ac8:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @staticFive, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %dec_label_pc_21b03, label %dec_label_pc_21af2

dec_label_pc_21af2:                               ; preds = %dec_label_pc_21ac8
  call void @printLine(ptr @global_var_48f95)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21b3e

dec_label_pc_21b03:                               ; preds = %dec_label_pc_21ac8
  %4 = icmp eq i1 %3, false
  %spec.select = select i1 %4, i64 %1, i64 0
  %5 = icmp eq i64 %spec.select, 0
  br i1 %5, label %dec_label_pc_21b2f, label %dec_label_pc_21b0a

dec_label_pc_21b0a:                               ; preds = %dec_label_pc_21b03
  %6 = inttoptr i64 %spec.select to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  %8 = inttoptr i64 %spec.select to ptr
  %9 = call i64 @_ZdlPvm(ptr %8, i64 8)
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21b3e

dec_label_pc_21b2f:                               ; preds = %dec_label_pc_21b03
  call void @printLine(ptr @global_var_48faa)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21b3e

dec_label_pc_21b3e:                               ; preds = %dec_label_pc_21b2f, %dec_label_pc_21b0a, %dec_label_pc_21af2
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

