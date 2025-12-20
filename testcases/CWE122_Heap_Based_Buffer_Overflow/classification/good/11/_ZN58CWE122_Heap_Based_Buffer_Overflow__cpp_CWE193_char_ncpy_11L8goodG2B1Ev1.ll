@global_var_b1b64 = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8ced9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_8cf1b, label %dec_label_pc_8cf0a

dec_label_pc_8cf0a:                               ; preds = %dec_label_pc_8ced9
  call void @printLine(ptr @global_var_b1b64)
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_8cf29

dec_label_pc_8cf1b:                               ; preds = %dec_label_pc_8ced9
  %5 = call i64 @_Znam(i64 11)
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_8cf29

dec_label_pc_8cf29:                               ; preds = %dec_label_pc_8cf1b, %dec_label_pc_8cf0a
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = add i32 %8, 1
  %10 = call ptr @strncpy(ptr %stack_var_-40.0.reload, ptr nonnull %7, i32 %9)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %11 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %11, label %dec_label_pc_8cf83, label %dec_label_pc_8cf77

dec_label_pc_8cf77:                               ; preds = %dec_label_pc_8cf29
  %12 = ptrtoint ptr %stack_var_-27 to i64
  %13 = bitcast ptr %stack_var_-40.0.reload to ptr
  %14 = and i64 %12, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_8cf83

dec_label_pc_8cf83:                               ; preds = %dec_label_pc_8cf77, %dec_label_pc_8cf29
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_8cf98, label %dec_label_pc_8cf93

dec_label_pc_8cf93:                               ; preds = %dec_label_pc_8cf83
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8cf98

dec_label_pc_8cf98:                               ; preds = %dec_label_pc_8cf93, %dec_label_pc_8cf83
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_920e3:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

