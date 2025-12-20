@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1ac0d:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_1ac83, label %dec_label_pc_1ac2b

dec_label_pc_1ac2b:                               ; preds = %dec_label_pc_1ac0d
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  %4 = call ptr @memset(ptr %3, i32 65, i32 99)
  %5 = add i64 %2, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %dec_label_pc_1ac6d, label %dec_label_pc_1ac61

dec_label_pc_1ac61:                               ; preds = %dec_label_pc_1ac2b
  call void @_ZdaPv(ptr %3, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1ac6d

dec_label_pc_1ac6d:                               ; preds = %dec_label_pc_1ac61, %dec_label_pc_1ac2b
  %.pr = load i32, ptr @global_var_630a8, align 4
  %8 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_1ac83, label %dec_label_pc_1ac77

dec_label_pc_1ac77:                               ; preds = %dec_label_pc_1ac6d
  %9 = inttoptr i64 %2 to ptr
  call void @printLine(ptr %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1ac83

dec_label_pc_1ac83:                               ; preds = %dec_label_pc_1ac0d, %dec_label_pc_1ac77, %dec_label_pc_1ac6d
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

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

