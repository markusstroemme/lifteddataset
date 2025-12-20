@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1b882:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = icmp eq i64 %0, 0
  store i64 99, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1b8d8, label %dec_label_pc_1b8cc

dec_label_pc_1b8cc:                               ; preds = %dec_label_pc_1b882
  call void @_ZdaPv(ptr %1, ptr inttoptr (i64 65 to ptr))
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1b8d8

dec_label_pc_1b8d8:                               ; preds = %dec_label_pc_1b8cc, %dec_label_pc_1b882
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

