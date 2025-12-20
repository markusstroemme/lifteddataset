@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2f871:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2f8bb, label %dec_label_pc_2f8a8

dec_label_pc_2f8a8:                               ; preds = %dec_label_pc_2f871
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_2f8cc

dec_label_pc_2f8bb:                               ; preds = %dec_label_pc_2f871
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %6, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_2f8cc

dec_label_pc_2f8cc:                               ; preds = %dec_label_pc_2f8bb, %dec_label_pc_2f8a8
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %7 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 100)
  %8 = inttoptr i64 %storemerge.reload to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %10 = load i64, ptr %8, align 8
  call void @printLongLongLine(i64 %10)
  %11 = icmp eq i64 %storemerge.reload, 0
  br i1 %11, label %dec_label_pc_2f92c, label %dec_label_pc_2f91d

dec_label_pc_2f91d:                               ; preds = %dec_label_pc_2f8cc
  %12 = ptrtoint ptr %stack_var_-824 to i64
  %13 = and i64 %12, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %8, ptr %14)
  br label %dec_label_pc_2f92c

dec_label_pc_2f92c:                               ; preds = %dec_label_pc_2f91d, %dec_label_pc_2f8cc
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_2f941, label %dec_label_pc_2f93c

dec_label_pc_2f93c:                               ; preds = %dec_label_pc_2f92c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2f941

dec_label_pc_2f941:                               ; preds = %dec_label_pc_2f93c, %dec_label_pc_2f92c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4dea6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

