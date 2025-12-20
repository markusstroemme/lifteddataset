@global_var_4906e = external constant [21 x i8]
@global_var_49083 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32
@global_var_6d064 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22b0d:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6d064, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %dec_label_pc_22b48, label %dec_label_pc_22b37

dec_label_pc_22b37:                               ; preds = %dec_label_pc_22b0d
  call void @printLine(ptr @global_var_4906e)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22b83

dec_label_pc_22b48:                               ; preds = %dec_label_pc_22b0d
  %4 = icmp eq i1 %3, false
  %spec.select = select i1 %4, i64 %1, i64 0
  %5 = icmp eq i64 %spec.select, 0
  br i1 %5, label %dec_label_pc_22b74, label %dec_label_pc_22b4f

dec_label_pc_22b4f:                               ; preds = %dec_label_pc_22b48
  %6 = inttoptr i64 %spec.select to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  %8 = inttoptr i64 %spec.select to ptr
  %9 = call i64 @_ZdlPvm(ptr %8, i64 8)
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22b83

dec_label_pc_22b74:                               ; preds = %dec_label_pc_22b48
  call void @printLine(ptr @global_var_49083)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22b83

dec_label_pc_22b83:                               ; preds = %dec_label_pc_22b74, %dec_label_pc_22b4f, %dec_label_pc_22b37
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

