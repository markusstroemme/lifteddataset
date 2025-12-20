@global_var_4a578 = external constant [4 x i8]
@global_var_6d23c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23472:
  store i32 1, ptr @global_var_6d23c, align 4
  %0 = call i64 @anon1(ptr null)
  ret i64 %0
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_23563:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6d23c, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_235a0, label %dec_label_pc_2357d

dec_label_pc_2357d:                               ; preds = %dec_label_pc_23563
  %4 = trunc i64 %1 to i32
  %5 = ptrtoint ptr %arg1 to i64
  call void @printIntLine(i32 %4)
  %6 = icmp eq ptr %arg1, null
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_235a0, label %dec_label_pc_23593

dec_label_pc_23593:                               ; preds = %dec_label_pc_2357d
  %7 = call i64 @_ZdlPvm(ptr nonnull %arg1, i64 8)
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_235a0

dec_label_pc_235a0:                               ; preds = %dec_label_pc_23593, %dec_label_pc_2357d, %dec_label_pc_23563
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

