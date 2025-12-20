@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_2a972:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-824 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = bitcast ptr %arg1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printLongLongLine(i64 %0)
  %5 = icmp eq ptr %arg1, null
  br i1 %5, label %dec_label_pc_2a9f7, label %dec_label_pc_2a9e8

dec_label_pc_2a9e8:                               ; preds = %dec_label_pc_2a972
  %6 = ptrtoint ptr %stack_var_-824 to i64
  %7 = and i64 %6, 4294967288
  %8 = inttoptr i64 %7 to ptr
  call void @_ZdaPv(ptr %3, ptr %8)
  br label %dec_label_pc_2a9f7

dec_label_pc_2a9f7:                               ; preds = %dec_label_pc_2a9e8, %dec_label_pc_2a972
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %1, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2aa0c, label %dec_label_pc_2aa07

dec_label_pc_2aa07:                               ; preds = %dec_label_pc_2a9f7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2aa0c

dec_label_pc_2aa0c:                               ; preds = %dec_label_pc_2aa07, %dec_label_pc_2a9f7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_2aa0e:
  %0 = call i64 @_Znam(i64 400)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @anon0(ptr %1)
  ret i64 %2
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

