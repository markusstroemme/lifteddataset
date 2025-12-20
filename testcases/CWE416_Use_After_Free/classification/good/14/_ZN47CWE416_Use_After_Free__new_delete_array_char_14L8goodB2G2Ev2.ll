@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1b65c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = zext i32 %0 to i64
  %2 = icmp eq i32 %0, 5
  %3 = icmp eq i1 %2, false
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1b6bd, label %dec_label_pc_1b67b

dec_label_pc_1b67b:                               ; preds = %dec_label_pc_1b65c
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %4, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = icmp eq i64 %4, 0
  store i64 99, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_1b6bd, label %dec_label_pc_1b6b1

dec_label_pc_1b6b1:                               ; preds = %dec_label_pc_1b67b
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 65 to ptr))
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1b6bd

dec_label_pc_1b6bd:                               ; preds = %dec_label_pc_1b6b1, %dec_label_pc_1b67b, %dec_label_pc_1b65c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

