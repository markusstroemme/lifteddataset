@staticFive = external local_unnamed_addr global i32
@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21a78:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @staticFive, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  %5 = zext i32 %2 to i64
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_21ac5, label %dec_label_pc_21aa2

dec_label_pc_21aa2:                               ; preds = %dec_label_pc_21a78
  %spec.select = select i1 %4, i64 %1, i64 0
  %6 = inttoptr i64 %spec.select to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  %8 = icmp eq i64 %spec.select, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_21ac5, label %dec_label_pc_21ab8

dec_label_pc_21ab8:                               ; preds = %dec_label_pc_21aa2
  %9 = inttoptr i64 %spec.select to ptr
  %10 = call i64 @_ZdlPvm(ptr %9, i64 8)
  store i64 %10, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21ac5

dec_label_pc_21ac5:                               ; preds = %dec_label_pc_21ab8, %dec_label_pc_21aa2, %dec_label_pc_21a78
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

