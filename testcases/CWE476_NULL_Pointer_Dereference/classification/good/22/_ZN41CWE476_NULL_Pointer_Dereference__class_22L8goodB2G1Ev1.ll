@global_var_490e6 = external constant [21 x i8]
@global_var_490fb = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32
@global_var_6d240 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2349f:
  store i32 0, ptr @global_var_6d240, align 4
  %0 = call i64 @anon1(ptr null)
  ret i64 %0
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_235a3:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6d240, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_235ce, label %dec_label_pc_235bd

dec_label_pc_235bd:                               ; preds = %dec_label_pc_235a3
  call void @printLine(ptr @global_var_490e6)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23609

dec_label_pc_235ce:                               ; preds = %dec_label_pc_235a3
  %4 = icmp eq ptr %arg1, null
  br i1 %4, label %dec_label_pc_235fa, label %dec_label_pc_235d5

dec_label_pc_235d5:                               ; preds = %dec_label_pc_235ce
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  %6 = call i64 @_ZdlPvm(ptr nonnull %arg1, i64 8)
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23609

dec_label_pc_235fa:                               ; preds = %dec_label_pc_235ce
  call void @printLine(ptr @global_var_490fb)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23609

dec_label_pc_23609:                               ; preds = %dec_label_pc_235fa, %dec_label_pc_235d5, %dec_label_pc_235bd
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

