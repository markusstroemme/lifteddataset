@global_var_765e0 = external constant [4 x i8]
@global_var_765e8 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_57d64:
  %0 = sext i32 %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_765e0, ptr %result)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_57da8:
  %0 = icmp eq ptr %result, inttoptr (i64 9223372036854775807 to ptr)
  br i1 %0, label %dec_label_pc_57deb, label %dec_label_pc_57dce

dec_label_pc_57dce:                               ; preds = %dec_label_pc_57da8
  %1 = ptrtoint ptr %result to i64
  %2 = add i64 %1, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_57dfa

dec_label_pc_57deb:                               ; preds = %dec_label_pc_57da8
  call void @printLine(ptr @global_var_765e8)
  br label %dec_label_pc_57dfa

dec_label_pc_57dfa:                               ; preds = %dec_label_pc_57deb, %dec_label_pc_57dce
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_57f56:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_57fcc, label %dec_label_pc_57f96

dec_label_pc_57f96:                               ; preds = %dec_label_pc_57f56
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_57fcc

dec_label_pc_57fcc:                               ; preds = %dec_label_pc_57f96, %dec_label_pc_57f56
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

