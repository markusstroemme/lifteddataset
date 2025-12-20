@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_71ac9:
  %0 = call i64 @_Znam(i64 11)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @anon1(ptr %1)
  ret i64 %2
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_71b29:
  %0 = call i64 @anon2(ptr %arg1)
  ret i64 %0
}

define i64 @anon2(ptr %arg1) local_unnamed_addr {
dec_label_pc_71b67:
  %0 = call i64 @anon3(ptr %arg1)
  ret i64 %0
}

define i64 @anon3(ptr %arg1) local_unnamed_addr {
dec_label_pc_71ba5:
  %0 = call i64 @anon4(ptr %arg1)
  ret i64 %0
}

define i64 @anon4(ptr %arg1) local_unnamed_addr {
dec_label_pc_71c44:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call ptr @strcpy(ptr %arg1, ptr nonnull %1)
  call void @printLine(ptr %arg1)
  %3 = icmp eq ptr %arg1, null
  br i1 %3, label %dec_label_pc_71cad, label %dec_label_pc_71ca1

dec_label_pc_71ca1:                               ; preds = %dec_label_pc_71c44
  %4 = ptrtoint ptr %stack_var_-27 to i64
  %5 = bitcast ptr %arg1 to ptr
  %6 = and i64 %4, 4294967288
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr %5, ptr %7)
  br label %dec_label_pc_71cad

dec_label_pc_71cad:                               ; preds = %dec_label_pc_71ca1, %dec_label_pc_71c44
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_71cc2, label %dec_label_pc_71cbd

dec_label_pc_71cbd:                               ; preds = %dec_label_pc_71cad
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_71cc2

dec_label_pc_71cc2:                               ; preds = %dec_label_pc_71cbd, %dec_label_pc_71cad
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

