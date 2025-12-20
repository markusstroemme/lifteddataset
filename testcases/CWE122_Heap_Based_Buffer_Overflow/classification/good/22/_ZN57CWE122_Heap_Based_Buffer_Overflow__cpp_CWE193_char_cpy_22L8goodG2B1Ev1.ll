@global_var_b0a1c = external constant [21 x i8]
@0 = external global i32
@global_var_dc220 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7067e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_dc220, align 4
  %1 = call i64 @anon1(ptr null)
  %2 = inttoptr i64 %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call ptr @strcpy(ptr %2, ptr nonnull %3)
  call void @printLine(ptr %2)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %dec_label_pc_70705, label %dec_label_pc_706f9

dec_label_pc_706f9:                               ; preds = %dec_label_pc_7067e
  %6 = ptrtoint ptr %stack_var_-27 to i64
  %7 = inttoptr i64 %1 to ptr
  %8 = and i64 %6, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %7, ptr %9)
  br label %dec_label_pc_70705

dec_label_pc_70705:                               ; preds = %dec_label_pc_706f9, %dec_label_pc_7067e
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_7071a, label %dec_label_pc_70715

dec_label_pc_70715:                               ; preds = %dec_label_pc_70705
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7071a

dec_label_pc_7071a:                               ; preds = %dec_label_pc_70715, %dec_label_pc_70705
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_707fd:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_dc220, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_70828, label %dec_label_pc_70817

dec_label_pc_70817:                               ; preds = %dec_label_pc_707fd
  call void @printLine(ptr @global_var_b0a1c)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_70836

dec_label_pc_70828:                               ; preds = %dec_label_pc_707fd
  %2 = call i64 @_Znam(i64 11)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_70836

dec_label_pc_70836:                               ; preds = %dec_label_pc_70828, %dec_label_pc_70817
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

