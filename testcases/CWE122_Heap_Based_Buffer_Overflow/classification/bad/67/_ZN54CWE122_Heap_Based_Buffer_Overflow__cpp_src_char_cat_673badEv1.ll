@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2ec6e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = call i64 @anon1(i64 %1)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_2ece1, label %dec_label_pc_2ecdc

dec_label_pc_2ecdc:                               ; preds = %dec_label_pc_2ec6e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2ece1

dec_label_pc_2ece1:                               ; preds = %dec_label_pc_2ecdc, %dec_label_pc_2ec6e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_2ed68:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call ptr @strcat(ptr nonnull %1, ptr %2)
  call void @printLine(ptr %2)
  %4 = icmp eq i64 %arg1, 0
  br i1 %4, label %dec_label_pc_2edf7, label %dec_label_pc_2edeb

dec_label_pc_2edeb:                               ; preds = %dec_label_pc_2ed68
  %5 = inttoptr i64 %arg1 to ptr
  %6 = and i64 %arg1, 4294967295
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr %5, ptr %7)
  br label %dec_label_pc_2edf7

dec_label_pc_2edf7:                               ; preds = %dec_label_pc_2edeb, %dec_label_pc_2ed68
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_2ee0c, label %dec_label_pc_2ee07

dec_label_pc_2ee07:                               ; preds = %dec_label_pc_2edf7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2ee0c

dec_label_pc_2ee0c:                               ; preds = %dec_label_pc_2ee07, %dec_label_pc_2edf7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

