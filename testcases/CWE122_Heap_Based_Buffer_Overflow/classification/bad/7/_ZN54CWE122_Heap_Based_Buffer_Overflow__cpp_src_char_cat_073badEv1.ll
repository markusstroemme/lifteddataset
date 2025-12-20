@0 = external global i32
@global_var_5b03c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a355:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5b03c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2a3aa, label %dec_label_pc_2a389

dec_label_pc_2a389:                               ; preds = %dec_label_pc_2a355
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %1, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  br label %dec_label_pc_2a3aa

dec_label_pc_2a3aa:                               ; preds = %dec_label_pc_2a389, %dec_label_pc_2a355
  %9 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %10 = bitcast ptr %stack_var_-72 to ptr
  %11 = call ptr @strcat(ptr nonnull %10, ptr %9)
  call void @printLine(ptr %9)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %dec_label_pc_2a412, label %dec_label_pc_2a406

dec_label_pc_2a406:                               ; preds = %dec_label_pc_2a3aa
  %13 = inttoptr i64 %1 to ptr
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_2a412

dec_label_pc_2a412:                               ; preds = %dec_label_pc_2a406, %dec_label_pc_2a3aa
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_2a427, label %dec_label_pc_2a422

dec_label_pc_2a422:                               ; preds = %dec_label_pc_2a412
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a427

dec_label_pc_2a427:                               ; preds = %dec_label_pc_2a422, %dec_label_pc_2a412
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

