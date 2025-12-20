@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.711() local_unnamed_addr {
dec_label_pc_21cbf:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21cdd:
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
  br i1 %10, label %dec_label_pc_21d30, label %dec_label_pc_21d0d

dec_label_pc_21d0d:                               ; preds = %dec_label_pc_21cdd
  %11 = icmp eq i32 %2, 0
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  %spec.select = select i1 %13, i64 %1, i64 0
  %14 = inttoptr i64 %spec.select to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %16 = icmp eq i64 %spec.select, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_21d30, label %dec_label_pc_21d23

dec_label_pc_21d23:                               ; preds = %dec_label_pc_21d0d
  %17 = inttoptr i64 %spec.select to ptr
  %18 = call i64 @_ZdlPvm(ptr %17, i64 8)
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21d30

dec_label_pc_21d30:                               ; preds = %dec_label_pc_21d23, %dec_label_pc_21d0d, %dec_label_pc_21cdd
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

