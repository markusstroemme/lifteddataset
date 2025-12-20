@global_var_44568 = external constant [21 x i8]
@0 = external global i32
@global_var_5b150 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_29f19:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5b150, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_29f5d, label %dec_label_pc_29f4c

dec_label_pc_29f4c:                               ; preds = %dec_label_pc_29f19
  call void @printLine(ptr @global_var_44568)
  br label %dec_label_pc_29f7e

dec_label_pc_29f5d:                               ; preds = %dec_label_pc_29f19
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_29f7e

dec_label_pc_29f7e:                               ; preds = %dec_label_pc_29f5d, %dec_label_pc_29f4c
  %8 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call ptr @strcat(ptr nonnull %9, ptr %8)
  call void @printLine(ptr %8)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %dec_label_pc_29fe6, label %dec_label_pc_29fda

dec_label_pc_29fda:                               ; preds = %dec_label_pc_29f7e
  %12 = inttoptr i64 %1 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_29fe6

dec_label_pc_29fe6:                               ; preds = %dec_label_pc_29fda, %dec_label_pc_29f7e
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_29ffb, label %dec_label_pc_29ff6

dec_label_pc_29ff6:                               ; preds = %dec_label_pc_29fe6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_29ffb

dec_label_pc_29ffb:                               ; preds = %dec_label_pc_29ff6, %dec_label_pc_29fe6
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

