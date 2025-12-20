@global_var_4901d = external constant [21 x i8]
@global_var_49032 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22412:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = call i32 @globalReturnsFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_22453, label %dec_label_pc_22442

dec_label_pc_22442:                               ; preds = %dec_label_pc_22412
  call void @printLine(ptr @global_var_4901d)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2248e

dec_label_pc_22453:                               ; preds = %dec_label_pc_22412
  %7 = icmp eq i32 %2, 0
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  %spec.select = select i1 %9, i64 %1, i64 0
  %10 = icmp eq i64 %spec.select, 0
  br i1 %10, label %dec_label_pc_2247f, label %dec_label_pc_2245a

dec_label_pc_2245a:                               ; preds = %dec_label_pc_22453
  %11 = inttoptr i64 %spec.select to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %13 = inttoptr i64 %spec.select to ptr
  %14 = call i64 @_ZdlPvm(ptr %13, i64 8)
  store i64 %14, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2248e

dec_label_pc_2247f:                               ; preds = %dec_label_pc_22453
  call void @printLine(ptr @global_var_49032)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2248e

dec_label_pc_2248e:                               ; preds = %dec_label_pc_2247f, %dec_label_pc_2245a, %dec_label_pc_22442
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3d04e:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

