@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c4dd:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %dec_label_pc_1c544, label %dec_label_pc_1c538

dec_label_pc_1c538:                               ; preds = %dec_label_pc_1c4dd
  %8 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr %8, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1c544

dec_label_pc_1c544:                               ; preds = %dec_label_pc_1c538, %dec_label_pc_1c4dd
  %9 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_1c565, label %dec_label_pc_1c560

dec_label_pc_1c560:                               ; preds = %dec_label_pc_1c544
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c565

dec_label_pc_1c565:                               ; preds = %dec_label_pc_1c560, %dec_label_pc_1c544
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_1c5e0:
  %0 = ptrtoint ptr %arg1 to i64
  ret i64 %0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

