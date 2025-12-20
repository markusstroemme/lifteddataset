@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1ad02:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_1ad62, label %dec_label_pc_1ad20

dec_label_pc_1ad20:                               ; preds = %dec_label_pc_1ad02
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  %4 = call ptr @memset(ptr %3, i32 65, i32 99)
  %5 = add i64 %2, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = icmp eq i64 %2, 0
  store i64 99, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_1ad62, label %dec_label_pc_1ad56

dec_label_pc_1ad56:                               ; preds = %dec_label_pc_1ad20
  call void @_ZdaPv(ptr %3, ptr inttoptr (i64 65 to ptr))
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1ad62

dec_label_pc_1ad62:                               ; preds = %dec_label_pc_1ad56, %dec_label_pc_1ad20, %dec_label_pc_1ad02
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

