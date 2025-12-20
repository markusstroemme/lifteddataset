@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d1a3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  store i8 0, ptr %2, align 1
  %3 = bitcast ptr %stack_var_-24 to ptr
  %4 = call i64 @anon1(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1d1fc, label %dec_label_pc_1d1f7

dec_label_pc_1d1f7:                               ; preds = %dec_label_pc_1d1a3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d1fc

dec_label_pc_1d1fc:                               ; preds = %dec_label_pc_1d1f7, %dec_label_pc_1d1a3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_1d2ac:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %arg1 to ptr
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strcat(ptr %2, ptr nonnull %3)
  call void @printLine(ptr %2)
  %5 = icmp eq ptr %arg1, null
  br i1 %5, label %dec_label_pc_1d333, label %dec_label_pc_1d327

dec_label_pc_1d327:                               ; preds = %dec_label_pc_1d2ac
  %6 = ptrtoint ptr %stack_var_-120 to i64
  %7 = and i64 %6, 4294967288
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %8)
  br label %dec_label_pc_1d333

dec_label_pc_1d333:                               ; preds = %dec_label_pc_1d327, %dec_label_pc_1d2ac
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_1d348, label %dec_label_pc_1d343

dec_label_pc_1d343:                               ; preds = %dec_label_pc_1d333
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d348

dec_label_pc_1d348:                               ; preds = %dec_label_pc_1d343, %dec_label_pc_1d333
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

