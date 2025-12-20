@0 = external global i32
@global_var_dc218 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_704ff:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_dc218, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_70527, label %dec_label_pc_70519

dec_label_pc_70519:                               ; preds = %dec_label_pc_704ff
  %2 = call i64 @_Znam(i64 11)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_70527

dec_label_pc_70527:                               ; preds = %dec_label_pc_70519, %dec_label_pc_704ff
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_7052d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_dc218, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = inttoptr i64 %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call ptr @strcpy(ptr %2, ptr nonnull %3)
  call void @printLine(ptr %2)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %dec_label_pc_705b4, label %dec_label_pc_705a8

dec_label_pc_705a8:                               ; preds = %dec_label_pc_7052d
  %6 = ptrtoint ptr %stack_var_-27 to i64
  %7 = inttoptr i64 %1 to ptr
  %8 = and i64 %6, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %7, ptr %9)
  br label %dec_label_pc_705b4

dec_label_pc_705b4:                               ; preds = %dec_label_pc_705a8, %dec_label_pc_7052d
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_705c9, label %dec_label_pc_705c4

dec_label_pc_705c4:                               ; preds = %dec_label_pc_705b4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_705c9

dec_label_pc_705c9:                               ; preds = %dec_label_pc_705c4, %dec_label_pc_705b4
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

