@global_var_4a8c7 = external constant [21 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_39d38:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_39d8f, label %dec_label_pc_39d56

dec_label_pc_39d56:                               ; preds = %dec_label_pc_39d38
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %dec_label_pc_39d8f, label %dec_label_pc_39d82

dec_label_pc_39d82:                               ; preds = %dec_label_pc_39d56
  %7 = inttoptr i64 %2 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 8)
  br label %dec_label_pc_39d8f

dec_label_pc_39d8f:                               ; preds = %dec_label_pc_39d82, %dec_label_pc_39d56, %dec_label_pc_39d38
  %9 = load i32, ptr @global_var_63100, align 4
  %10 = icmp eq i32 %9, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_39da8, label %dec_label_pc_39d99

dec_label_pc_39d99:                               ; preds = %dec_label_pc_39d8f
  call void @printLine(ptr @global_var_4a8c7)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39da8

dec_label_pc_39da8:                               ; preds = %dec_label_pc_39d99, %dec_label_pc_39d8f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

