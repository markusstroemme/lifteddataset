@global_var_b1ba3 = external constant [21 x i8]
@0 = external global i32
@global_var_dc310 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_8dd49:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_dc310, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_8dd74, label %dec_label_pc_8dd63

dec_label_pc_8dd63:                               ; preds = %dec_label_pc_8dd49
  call void @printLine(ptr @global_var_b1ba3)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_8dd82

dec_label_pc_8dd74:                               ; preds = %dec_label_pc_8dd49
  %2 = call i64 @_Znam(i64 11)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_8dd82

dec_label_pc_8dd82:                               ; preds = %dec_label_pc_8dd74, %dec_label_pc_8dd63
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_8dd88:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_dc310, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = inttoptr i64 %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = add i32 %4, 1
  %6 = call ptr @strncpy(ptr %2, ptr nonnull %3, i32 %5)
  call void @printLine(ptr %2)
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %dec_label_pc_8de1f, label %dec_label_pc_8de13

dec_label_pc_8de13:                               ; preds = %dec_label_pc_8dd88
  %8 = ptrtoint ptr %stack_var_-27 to i64
  %9 = inttoptr i64 %1 to ptr
  %10 = and i64 %8, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_8de1f

dec_label_pc_8de1f:                               ; preds = %dec_label_pc_8de13, %dec_label_pc_8dd88
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_8de34, label %dec_label_pc_8de2f

dec_label_pc_8de2f:                               ; preds = %dec_label_pc_8de1f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8de34

dec_label_pc_8de34:                               ; preds = %dec_label_pc_8de2f, %dec_label_pc_8de1f
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

