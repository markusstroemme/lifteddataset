@0 = external global i32

define i32 @staticReturnsTrue.165() local_unnamed_addr {
dec_label_pc_803ce:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8055d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.165()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_8059c, label %dec_label_pc_8058e

dec_label_pc_8058e:                               ; preds = %dec_label_pc_8055d
  %5 = call i64 @_Znam(i64 11)
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_8059c

dec_label_pc_8059c:                               ; preds = %dec_label_pc_8058e, %dec_label_pc_8055d
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = add i32 %8, 1
  %10 = bitcast ptr %stack_var_-40.0.reload to ptr
  %11 = call ptr @memcpy(ptr %10, ptr nonnull %stack_var_-27, i32 %9)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %12 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %12, label %dec_label_pc_805f6, label %dec_label_pc_805ea

dec_label_pc_805ea:                               ; preds = %dec_label_pc_8059c
  %13 = ptrtoint ptr %stack_var_-27 to i64
  %14 = and i64 %13, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %10, ptr %15)
  br label %dec_label_pc_805f6

dec_label_pc_805f6:                               ; preds = %dec_label_pc_805ea, %dec_label_pc_8059c
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_8060b, label %dec_label_pc_80606

dec_label_pc_80606:                               ; preds = %dec_label_pc_805f6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8060b

dec_label_pc_8060b:                               ; preds = %dec_label_pc_80606, %dec_label_pc_805f6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

