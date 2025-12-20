@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_80cac:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.in.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_80ced, label %dec_label_pc_80cdd

dec_label_pc_80cdd:                               ; preds = %dec_label_pc_80cac
  %5 = call i64 @_Znam(i64 10)
  store i64 %5, ptr %storemerge.in.reg2mem, align 8
  br label %dec_label_pc_80cfb

dec_label_pc_80ced:                               ; preds = %dec_label_pc_80cac
  %6 = call i64 @_Znam(i64 11)
  store i64 %6, ptr %storemerge.in.reg2mem, align 8
  br label %dec_label_pc_80cfb

dec_label_pc_80cfb:                               ; preds = %dec_label_pc_80ced, %dec_label_pc_80cdd
  %storemerge.in.reload = load i64, ptr %storemerge.in.reg2mem, align 8
  %storemerge = inttoptr i64 %storemerge.in.reload to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = add i32 %8, 1
  %10 = inttoptr i64 %storemerge.in.reload to ptr
  %11 = call ptr @memcpy(ptr %10, ptr nonnull %stack_var_-27, i32 %9)
  call void @printLine(ptr %storemerge)
  %12 = icmp eq i64 %storemerge.in.reload, 0
  br i1 %12, label %dec_label_pc_80d55, label %dec_label_pc_80d49

dec_label_pc_80d49:                               ; preds = %dec_label_pc_80cfb
  %13 = ptrtoint ptr %stack_var_-27 to i64
  %14 = and i64 %13, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %10, ptr %15)
  br label %dec_label_pc_80d55

dec_label_pc_80d55:                               ; preds = %dec_label_pc_80d49, %dec_label_pc_80cfb
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_80d6a, label %dec_label_pc_80d65

dec_label_pc_80d65:                               ; preds = %dec_label_pc_80d55
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_80d6a

dec_label_pc_80d6a:                               ; preds = %dec_label_pc_80d65, %dec_label_pc_80d55
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

