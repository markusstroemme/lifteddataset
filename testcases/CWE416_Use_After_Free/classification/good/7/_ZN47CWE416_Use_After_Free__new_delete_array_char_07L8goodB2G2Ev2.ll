@0 = external global i32
@global_var_63044 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1a5b8:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63044, align 4
  %1 = zext i32 %0 to i64
  %2 = icmp eq i32 %0, 5
  %3 = icmp eq i1 %2, false
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1a619, label %dec_label_pc_1a5d7

dec_label_pc_1a5d7:                               ; preds = %dec_label_pc_1a5b8
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %4, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = icmp eq i64 %4, 0
  store i64 99, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_1a619, label %dec_label_pc_1a60d

dec_label_pc_1a60d:                               ; preds = %dec_label_pc_1a5d7
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 65 to ptr))
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1a619

dec_label_pc_1a619:                               ; preds = %dec_label_pc_1a60d, %dec_label_pc_1a5d7, %dec_label_pc_1a5b8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

